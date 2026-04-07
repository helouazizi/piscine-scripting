from string_processing import tokenize
from collections import Counter
def tokenizer_counter(sentence: str) -> int:
    tokens = tokenize(sentence)
    c = Counter(tokens)
    return dict(sorted(c.items()))