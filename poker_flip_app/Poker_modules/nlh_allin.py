'''
テキサスホールデムの全員オールイン対決のプログラム
'''
from .poker_card import Card, deck
from .nlh_heads_allin import nlh_heads_allin
import random

#n人、ハンド2枚、ボード5枚時の勝者判定。勝者が複数の場合があるのでリストで返却
def nlh_allin(players, board):

    n = len(players)
    winner_hand = [players[0]]
    winners = [1]

    #人数ぶん回す
    for i in range(1,n):
        #winnerより強かったらwinnerを交代
        if nlh_heads_allin(winner_hand[0], players[i], board) == "player2":
            winner_hand = [players[i]]
            winners = [i+1]
        #winnerと引き分けならwinnerのリストに挿入
        elif nlh_heads_allin(winner_hand[0], players[i], board) == "draw":
            winner_hand.append(players[i])
            winners.append(i+1)


    return winners

#確認用
if __name__ == "__main__":  
    random.shuffle(deck)
    players = [deck[0:2], deck[2:4], deck[4:6], deck[6:8]]
    board = deck[47:52]
    
    n = len(players)
    print("board is", board)
    for i in range(n):
        print(f"player{i}'s hand is", players[i])
    print(nlh_allin(players, board))