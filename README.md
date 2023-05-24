# nlh_multiway_allin
ホールデムのマルチウェイオールインのwebアプリ。
人数の数字を入れて、実行を押すと動く。

表示されるもの

ボード5枚

プレイヤーの人数×ハンド2枚

ポット取得者winner

<pre>
.
├── Template
│   └── poker_fortune_HTML
│       └── index.html
├── db.sqlite3
├── manage.py
├── nlh_multiway_allin
│   ├── __init__.py
│   ├── __pycache__
│   │   ├── __init__.cpython-311.pyc
│   │   ├── settings.cpython-311.pyc
│   │   ├── urls.cpython-311.pyc
│   │   └── wsgi.cpython-311.pyc
│   ├── asgi.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── poker_flip_app
│   ├── Poker_modules
│   │   ├── __init__.py
│   │   ├── __pycache__
│   │   │   ├── __init__.cpython-311.pyc
│   │   │   ├── nlh_allin.cpython-311.pyc
│   │   │   ├── nlh_heads_allin.cpython-311.pyc
│   │   │   ├── poker_card.cpython-311.pyc
│   │   │   └── poker_hand.cpython-311.pyc
│   │   ├── compare_poker_hand_strength.py
│   │   ├── draw_poker.py
│   │   ├── nlh_allin.py
│   │   ├── nlh_heads_allin.py
│   │   ├── poker_card.py
│   │   ├── poker_card_deck.py
│   │   ├── poker_hand.py
│   │   └── test.py
│   ├── __init__.py
│   ├── __pycache__
│   │   ├── __init__.cpython-311.pyc
│   │   ├── admin.cpython-311.pyc
│   │   ├── apps.cpython-311.pyc
│   │   ├── calc.cpython-311.pyc
│   │   ├── models.cpython-311.pyc
│   │   ├── urls.cpython-311.pyc
│   │   └── views.cpython-311.pyc
│   ├── admin.py
│   ├── apps.py
│   ├── migrations
│   │   ├── 0001_initial.py
│   │   ├── __init__.py
│   │   └── __pycache__
│   │       ├── 0001_initial.cpython-311.pyc
│   │       └── __init__.cpython-311.pyc
│   ├── models.py
│   ├── tests.py
│   ├── urls.py
│   └── views.py
└── static
    ├── images
    │   ├── 2c.png
    │   ├── 2d.png
    │   ├── 2h.png
    │   ├── 2s.png
    │   ├── 3c.png
    │   ├── 3d.png
    │   ├── 3h.png
    │   ├── 3s.png
    │   ├── 4c.png
    │   ├── 4d.png
    │   ├── 4h.png
    │   ├── 4s.png
    │   ├── 5c.png
    │   ├── 5d.png
    │   ├── 5h.png
    │   ├── 5s.png
    │   ├── 6c.png
    │   ├── 6d.png
    │   ├── 6h.png
    │   ├── 6s.png
    │   ├── 7c.png
    │   ├── 7d.png
    │   ├── 7h.png
    │   ├── 7s.png
    │   ├── 8c.png
    │   ├── 8d.png
    │   ├── 8h.png
    │   ├── 8s.png
    │   ├── 9c.png
    │   ├── 9d.png
    │   ├── 9h.png
    │   ├── 9s.png
    │   ├── Ac.png
    │   ├── Ad.png
    │   ├── Ah.png
    │   ├── As.png
    │   ├── Jc.png
    │   ├── Jd.png
    │   ├── Jh.png
    │   ├── Js.png
    │   ├── Kc.png
    │   ├── Kd.png
    │   ├── Kh.png
    │   ├── Ks.png
    │   ├── Qc.png
    │   ├── Qd.png
    │   ├── Qh.png
    │   ├── Qs.png
    │   ├── Tc.png
    │   ├── Td.png
    │   ├── Th.png
    │   ├── Ts.png
    │   ├── card_back.png
    │   ├── card_joker.png
    │   ├── get_card.sh
    │   └── rename.py
    ├── js
    │   └── script.js
    └── poker_fortune_css
        └── style.css
<pre>
