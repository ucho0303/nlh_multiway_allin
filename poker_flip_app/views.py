from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
# from poker_flip_app import calc

from .Poker_modules.poker_card import deck
from .Poker_modules.nlh_heads_allin import nlh_heads_allin
from .Poker_modules.nlh_allin import nlh_allin
import random


#contextに送るパラメータを作る関数
def make_params(n):

    random.shuffle(deck)
    players = []
    for i in range(n):
        players.append(deck[2*i:2*(i+1)])
    board = deck[47:52]
    winners = nlh_allin(players, board)
    params = {"message_me": "NLH ALL IN",
              "players":players,
              "board": board,
              "winners": winners,}
    
    return params

# View関数を任意に定義
def index(request):
    if request.method == "POST":
        num_players = int(request.POST.get("num_players"))
        params = make_params(num_players)
        return render(request,'poker_fortune_HTML/index.html',context=params)

    else:
        # 変数設定
        params = {"message_me": "NLH ALL IN"}
        # 出力
        return render(request,'poker_fortune_HTML/index.html',context=params)
        # return HttpResponse("Hello World")

