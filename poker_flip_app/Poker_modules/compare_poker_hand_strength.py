from .poker_card import Card, sort_card_list, deck
from .poker_hand import hand_checker
from .poker_card_deck import deck
import random

#２つのハンドの強さの比較
def compare_two_hands(hand1, hand2):
    a = hand_checker(hand1)
    b = hand_checker(hand2)
    if a > b:
        return "hand1"
    elif a < b:
        return "hand2"
    else:
        return "draw"

if __name__ == "__main__":
    #デッキをシャッフルし、5枚のハンドを配る
    random.shuffle(deck)
    hand1 = deck[0:5]
    hand2 = deck[5:10]
    print(hand1)
    print(hand2)
    print(compare_two_hands(hand1, hand2))

