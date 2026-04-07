import re


def tokenize(sentence):

    sentence = sentence.lower()

    sentence = re.sub(r"[^a-z0-9]+", " ", sentence)

    tokens = [word for word in sentence.split() if word]

    return tokens
