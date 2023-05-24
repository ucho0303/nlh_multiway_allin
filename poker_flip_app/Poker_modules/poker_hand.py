"""
配られた5枚のカードの役などに関するプログラム
役が何かを判定、ハンドどうしの強さの比較
"""

from .poker_card import Card, sort_card_list, deck
import random

#ハンドの強さチェック関数
def hand_checker(hand = [Card(10,"s"), Card(11,"s"), Card(12,"s"), Card(13,"s"), Card(14,"s")]):
    
    #変数
    #フラッシュ判定用
    is_flush = True

    #ストレート判定用
    is_straight = True

    #同じ数字が何枚あるか判定用配列
    #ぞれぞれの数字-2の位置に保存する
    num_list = [0]*13
    

    #ハンドをソートする
    hand = sort_card_list(hand)

    num_list[hand[0].num - 2] += 1

    #メインループ
    for i in range(1,5):

        #フラッシュの判定
        if hand[i].suit != hand[i-1].suit:
            is_flush = False

        #ストレート判定
        if hand[i].num != hand[i-1].num + 1:
            if hand[i].num != 14 or hand[i-1].num != 5:
                is_straight = False
        
        #配列に各数字を保存
        num_list[hand[i].num - 2] += 1

    #forループ終了


    #のちの比較のための配列を作る
    hand_strength = []
    for i in range(1,5):
        for j in range(len(num_list)):
            if num_list[j] == i:
                for k in range(i):
                    hand_strength.append(j)
    
    hand_strength.reverse()

    #最終ハンドチェック
    if is_flush and is_straight:
        if hand[0].num == 10:
            return [9] + hand_strength
        else:
            return [8] + hand_strength

    elif max(num_list) == 4:
        return [7] + hand_strength

    elif max(num_list) == 3:
        if 2 in num_list:
            return [6] + hand_strength
        else:
            return [3] + hand_strength

    elif is_flush:
        return [5] + hand_strength

    elif is_straight:
        return [4] + hand_strength

    elif max(num_list) == 2:
        if num_list.count(2) == 2:
            return [2] + hand_strength
        else:
            return [1] + hand_strength
            
    else:
        return [0] + hand_strength

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

#役の名前出力用
def hand_name(hand_strength):
    if hand_strength[0] == 0:
        return "High Card"
    elif hand_strength[0] == 1:
        return "Pair"
    elif hand_strength[0] == 2:
        return "Two Pair"
    elif hand_strength[0] == 3:
        return "Three of a Kind"
    elif hand_strength[0] == 4:
        return "Straight"
    elif hand_strength[0] == 5:
        return "Flush"
    elif hand_strength[0] == 6:
        return "Full House"
    elif hand_strength[0] == 7:
        return "Four of a Kind"
    elif hand_strength[0] == 8:
        return  "Straight Flush"
    elif hand_strength[0] == 9:
        return "Royal Flush"
#確認用
if __name__ == "__main__":
    #hand_checkerの確認用
    hand1 = [Card(6, "h"), Card(6, "s"), Card(6, "d"), Card(14, "d"), Card(14, "h")]
    hand2 = [Card(2, "d"), Card(3, "s"), Card(4, "d"), Card(5, "d"), Card(14, "h")]
    print(hand_checker())
    print(hand_checker(hand1))
    print(hand_checker(hand2))

    #compare_two_handsの確認用
    #デッキをシャッフルし、5枚のハンドを配る
    random.shuffle(deck)
    hand1 = deck[0:5]
    hand2 = deck[5:10]
    print(hand1)
    print(hand2)
    print(compare_two_hands(hand1, hand2))

