import heapq
from collections import Counter, namedtuple

class Node(namedtuple("Node", ["char", "freq", "left", "right"])):
    def __lt__(self, other):
        return self.freq < other.freq

def build_huffman_tree(text):
    frequency = Counter(text)
    heap = [Node(char, freq, None, None) for char, freq in frequency.items()]
    heapq.heapify(heap)

    while len(heap) > 1:
        node1 = heapq.heappop(heap)
        node2 = heapq.heappop(heap)
        merged = Node(None, node1.freq + node2.freq, node1, node2)
        heapq.heappush(heap, merged)

    return heap[0] if heap else None

def build_codes(node, prefix="", codebook={}):
    if node is not None:
        if node.char is not None:
            codebook[node.char] = prefix
        build_codes(node.left, prefix + "0", codebook)
        build_codes(node.right, prefix + "1", codebook)
    return codebook

def huffman_compress(text):
    root = build_huffman_tree(text)
    codebook = build_codes(root)
    compressed = ''.join(codebook[char] for char in text)
    return compressed, codebook, root

def huffman_decompress(compressed, root):
    result = []
    node = root
    for bit in compressed:
        node = node.left if bit == '0' else node.right
        if node.char:
            result.append(node.char)
            node = root
    return ''.join(result)

def text_to_binary(text):
    return ''.join(f'{ord(c):08b}' for c in text)

# Ejemplo de uso
if __name__ == "__main__":
    texto_original = "MANZANAS AMARILLAS DE ANA"
    comprimido, codigos, arbol = huffman_compress(texto_original)

    print("Texto original:", texto_original)
    print("Texto original en binario (ASCII):", text_to_binary(texto_original))

    print("Texto comprimido (en bits):", comprimido)
    print("Tabla de códigos:", codigos)

    texto_recuperado = huffman_decompress(comprimido, arbol)
    print("Texto descomprimido:", texto_recuperado)


