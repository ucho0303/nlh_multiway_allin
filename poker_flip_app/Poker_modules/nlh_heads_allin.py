"""
テキサスホールデムのヘッズアップ、両者オールインのプログラム
"""

from .poker_card import Card,  deck
from .poker_hand import compare_two_hands
import random

#スターティングハンドとボード7枚中役判定に使う5枚決定
def nlh_choose_hand(starting_hand, board):
    #７枚のハンド配列
    hand = starting_hand + board

    #役を決める5枚のハンド配列を総当たりで決定
    main_hand = board
    for i in range(6):
        for j in range(i+1,7):
            sub_hand = [hand[x] for x in range(7) if x!=i and x!=j]
            if compare_two_hands(main_hand, sub_hand) == "hand2":
                main_hand = sub_hand
    
    return main_hand

#2人、ハンド2枚、ボード5枚時の勝ち負け判定
def nlh_heads_allin(player1, player2, board):
    hand1 = nlh_choose_hand(player1, board)
    hand2 = nlh_choose_hand(player2, board)
    winner = compare_two_hands(hand1, hand2)
    if winner == "hand1":
        return "player1"
    elif winner == "hand2":
        return "player2"
    else:
        return "draw"

#確認用
if __name__ == "__main__":  
    random.shuffle(deck)
    player1 = deck[0:2]
    player2 = deck[2:4]
    board = deck[4:9]
    print("player1's hand is", player1)
    print("player2's hand is", player2)
    print("board is", board)
    print(nlh_heads_allin(player1, player2, board))

