from .poker_card import Card
import random

deck = []

for i in range(2,15):
    deck.append(Card(i,"s"))
    deck.append(Card(i,"h"))
    deck.append(Card(i,"c"))
    deck.append(Card(i,"d"))

if __name__ == "__main__":
    print(deck)
