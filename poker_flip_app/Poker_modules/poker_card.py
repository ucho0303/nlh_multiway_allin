"""
ハンドが配られる前の、トランプのカード関連のプログラム。
カードクラス、ソート用関数、52枚のカードデッキ
"""

#カードクラス
#役判定を楽にするため、Aの数字は14とする
class Card:
    #数字とスート
    def __init__(self, num, suit):
        self.num = num
        self.suit = suit
        
    #出力時に画像ファイルの名前と同じ文字列になるようにする
    def __repr__(self) -> str:
        if self.num == 10:
            return "images/" + "T" + self.suit + ".png"
        elif self.num == 11:
            return "images/" + "J" + self.suit + ".png"
        elif self.num == 12:
            return "images/" + "Q" + self.suit + ".png"
        elif self.num == 13:
            return "images/" + "K" + self.suit + ".png"
        elif self.num == 14:
            return "images/" + "A" + self.suit + ".png"
        else:
            return "images/" + str(self.num) + self.suit + ".png"

#カードのソート用
def sort_card_list(card_list):
    sorted_card_list = sorted(card_list, key=lambda card: card.num)
    return sorted_card_list


#jokerを除いた52枚のカードデッキ
deck = []
for i in range(2,15):
    deck.append(Card(i,"s"))
    deck.append(Card(i,"h"))
    deck.append(Card(i,"c"))
    deck.append(Card(i,"d"))


#確認用
if __name__ == "__main__":
    card1 = Card(14, "d")
    card2 = Card(10, "h")
    print(card1)
    print(card2)
    print(type(card1.suit))
    print(deck)