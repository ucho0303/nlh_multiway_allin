"""
5枚で行うドローポーカーのプログラム
実行で、配られた5枚のランダムなハンドとその役を出力
"""

from .poker_card import Card, sort_card_list, deck
from .poker_hand import hand_checker, hand_name
import random

#デッキをシャッフルし、5枚のハンドを配る
random.shuffle(deck)
hand = deck[0:5]

#実行
print("Your hand is", hand)
print(hand_name(hand_checker(hand)))