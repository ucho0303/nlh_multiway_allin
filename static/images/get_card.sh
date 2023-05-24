#!/bin/bash

#
# いらすとやさんのトランプ一括ダウンロード
#
# 以下のカードを一括でDLします。
# https://www.irasutoya.com/2017/05/card.html
#

#-------------------------------------------
# 対象のファイル一覧
#-------------------------------------------
# 画像サイズ
size="s200"

# ファイル一覧
list=(
  # スペード
  "https://2.bp.blogspot.com/-S-31SRfkS1o/WQBAEtCo1nI/AAAAAAABD98/fzjjCIIibhMkeoKx9NfyTo3i1TjRaONPQCLcB/${size}/card_spade_01.png"
  "https://4.bp.blogspot.com/-HUJzhH60Cf0/WQBAFMX2JoI/AAAAAAABD-E/ApHn1B1nwtA6eg1WDh2xWyialgCcPEIRgCLcB/${size}/card_spade_02.png"
  "https://1.bp.blogspot.com/-r6YgdswwjD4/WQBAFIyHimI/AAAAAAABD-I/_5U9DZ-tV1IEmoTgbgdSt0OCS9ujA-6IwCLcB/${size}/card_spade_03.png"
  "https://2.bp.blogspot.com/-V0P8AZskntU/WQBAFXXQo8I/AAAAAAABD-M/hnZFQ7J6xSMTtVPvwH2AAKKSlRPEVTH7ACLcB/${size}/card_spade_04.png"
  "https://4.bp.blogspot.com/-bvSGYORb6Xg/WQBAF61kUOI/AAAAAAABD-Q/SalVkKKYYt85TNJJsOjmgNwfT0ao3foewCLcB/${size}/card_spade_05.png"
  "https://3.bp.blogspot.com/-c3OkNnevlIY/WQBAF8LtaAI/AAAAAAABD-U/_qIQIX6nGtYxDaAiPoR--8s0TcAcFg_GACLcB/${size}/card_spade_06.png"
  "https://1.bp.blogspot.com/-YWPrnvvibVs/WQBAGEyzd2I/AAAAAAABD-g/6YXIUPRRJnctD-NjPzA8_Pf5z7bRLx6NgCLcB/${size}/card_spade_07.png"
  "https://2.bp.blogspot.com/-4WjI4aJ-Y2k/WQBAGgc0XqI/AAAAAAABD-c/-yCRUYRxy-sdx5EG96teinHSwjj3L_XrACLcB/${size}/card_spade_08.png"
  "https://1.bp.blogspot.com/-lYcdLoEoqhk/WQBAGkz_02I/AAAAAAABD-Y/BzeTL07VRhc9viqmclMywil_LqOdQGL5QCLcB/${size}/card_spade_09.png"
  "https://4.bp.blogspot.com/-0hkv0a660xs/WQBAHQRO0BI/AAAAAAABD-k/w_vXN31wPHULAG51gb419z6Q3WTKCfmOACLcB/${size}/card_spade_10.png"
  "https://2.bp.blogspot.com/-JwwLTPZuPMM/XD_5kfjssyI/AAAAAAABRQc/d6u2cLsQA0k99iys2LJYymXaf5TwbBhxACLcBGAs/${size}/card_spade_11.png"
  "https://2.bp.blogspot.com/-epZe0JlVtMM/WQBAHk4rzcI/AAAAAAABD-s/jlpAWreHND8kI6ez_wMETbWg0480l2JsgCLcB/${size}/card_spade_12.png"
  "https://1.bp.blogspot.com/-OjE8t2UIgRA/WQBAH71q1bI/AAAAAAABD-w/s7xK2t5RNHwkc0fb98FX08lUj4SxcdFrQCLcB/${size}/card_spade_13.png"

  # ハート
  "https://3.bp.blogspot.com/-Gc8mOTO7D3E/WQBAARSWh8I/AAAAAAABD9I/e0T5rdD37VQ95br4klbWQbm56eFCtd3UwCLcB/${size}/card_heart_01.png"
  "https://3.bp.blogspot.com/-x1YD4kp-X9E/WQBAA3RKDbI/AAAAAAABD9M/5K8vEH6kYSo5M9r2jzxheGlnup2k-El5gCLcB/${size}/card_heart_02.png"
  "https://4.bp.blogspot.com/-EKVZFBVtmjQ/WQBABA_ahuI/AAAAAAABD9U/nTJtYuBS5fkpjWPMxSSnUINuFSWxTHO3gCLcB/${size}/card_heart_03.png"
  "https://2.bp.blogspot.com/-Nf18bkno_jQ/WQBABJhQh3I/AAAAAAABD9Q/ZSy-WCf-at0qtHZdw5JeFf7miJP2RWingCLcB/${size}/card_heart_04.png"
  "https://2.bp.blogspot.com/-CFp5e60TFQk/WQBABoeZH8I/AAAAAAABD9Y/yPc41v2h0yYoQ8m6d610Vk3QVREpnLMGQCLcB/${size}/card_heart_05.png"
  "https://3.bp.blogspot.com/-w5tuOxBszlU/WQBABseF49I/AAAAAAABD9c/9yF8y-6012MKF5UlSz-dxORnZU_YhEuxgCLcB/${size}/card_heart_06.png"
  "https://1.bp.blogspot.com/-Mi6_zO3nrME/WQBAB5sBPMI/AAAAAAABD9g/a73P0ORztvULMDbAMLMO31MTkHONqqOGQCLcB/${size}/card_heart_07.png"
  "https://4.bp.blogspot.com/-9eIFe_ntyM8/WQBACKrLmjI/AAAAAAABD9k/k2Bx40mdlNsDRsb9g5EVOtJyAbBngcfXgCLcB/${size}/card_heart_08.png"
  "https://4.bp.blogspot.com/--WdtHI89Ero/WQBACbrbQuI/AAAAAAABD9o/DTI0H5yJLR0ChinijyFaOCZuY3I4AEApACLcB/${size}/card_heart_09.png"
  "https://4.bp.blogspot.com/-Dj2Yzi1XR-E/WQBADWUni-I/AAAAAAABD9s/2Cy3plnNZGwt9sV3vDO4eCvJSSg9DGx-wCLcB/${size}/card_heart_10.png"
  "https://1.bp.blogspot.com/-V-d44vBp5RA/WQBADtJIdzI/AAAAAAABD9w/pLAAFAGsYMQAQJPX6kC5xDlAcjyrVAByQCLcB/${size}/card_heart_11.png"
  "https://2.bp.blogspot.com/-bT_o-lYYQ-0/WQBAD08x5KI/AAAAAAABD90/RF8S0SR_Btk5iwlKguBB9mhSJh0WZOwVgCLcB/${size}/card_heart_12.png"
  "https://2.bp.blogspot.com/-l4PpG6pymus/WQBAEqIEXiI/AAAAAAABD94/ET_3LcQAieMiur7nk-YZSeB6y_FkAZvyACLcB/${size}/card_heart_13.png"

  # ダイヤ
  "https://3.bp.blogspot.com/-t2Uv3YfhtcY/WQA_8e3yr7I/AAAAAAABD8U/I5XTJPcgiToEOc6Qe1jAJTaXm1Sx8HtQgCLcB/${size}/card_diamond_01.png"
  "https://1.bp.blogspot.com/-soxRK6ntcxw/WQA_9nD9WCI/AAAAAAABD8Y/e7S9nX1hwEQuO5SIRro6154hS6r7-jJJQCLcB/${size}/card_diamond_02.png"
  "https://1.bp.blogspot.com/-Zo951HLWRlQ/WQA_9svbtTI/AAAAAAABD8c/jcJcMIfJNEgtPADX4Z_SRD7JptfX0uJdQCLcB/${size}/card_diamond_03.png"
  "https://4.bp.blogspot.com/-WNnDDDnVkrs/WQA_9vUTTJI/AAAAAAABD8g/PSyYSizOnVkaC37L7bLn82Ex83Tvm0BKACLcB/${size}/card_diamond_04.png"
  "https://4.bp.blogspot.com/-nRZKqqQt_vw/WQA_-vt8HiI/AAAAAAABD8s/g5mYH3Esp7AQkPavHFI74TqLB4Gl6DTBQCLcB/${size}/card_diamond_05.png"
  "https://1.bp.blogspot.com/-_3IO3O1KAoQ/WQA_-lJ2MWI/AAAAAAABD8k/VxlQcr7UwTMsreQ9Rn3Pecu0kqqRD53MACLcB/${size}/card_diamond_06.png"
  "https://4.bp.blogspot.com/-BqGnQr2-NqI/WQA_-s5yc7I/AAAAAAABD8o/NtZi3Dh4bNUAA5HUUxlhR1K55K32CYbbwCLcB/${size}/card_diamond_07.png"
  "https://1.bp.blogspot.com/-FZGbdtedARU/WQA__nBH5iI/AAAAAAABD84/X9BsjJbBLZcuGBr5VT2EeisGjlp0wtJpwCLcB/${size}/card_diamond_08.png"
  "https://3.bp.blogspot.com/-Ndl0O1jqgq8/WQA__BbskCI/AAAAAAABD8w/r7FfStH5YQUla15gVo_4fLZe1ICIMOp-ACLcB/${size}/card_diamond_09.png"
  "https://2.bp.blogspot.com/-cHD1NPF9H_4/WQA__UMM9UI/AAAAAAABD80/vm9j-P6Mnqgg9ZnGISqKsJy4chmotPKlQCLcB/${size}/card_diamond_10.png"
  "https://3.bp.blogspot.com/-_TRspngujsg/WQA__3On4dI/AAAAAAABD88/qBQf1hrFHdIHDoJkJgDTWpIFHWTGX1gUwCLcB/${size}/card_diamond_11.png"
  "https://4.bp.blogspot.com/-awCU2XbepTk/WQBAAAkIYiI/AAAAAAABD9A/xVB37vHopCsDpS-UN5EbwnXGiUiO9J1ZwCLcB/${size}/card_diamond_12.png"
  "https://2.bp.blogspot.com/-AIDRA5MtU5A/WQBAAWRMAgI/AAAAAAABD9E/iNuSUO4y_fQTDR3UQi149RwdbPx0vw4tQCLcB/${size}/card_diamond_13.png"

  # クラブ
  "https://4.bp.blogspot.com/-BOhNgboYmDc/WQA_27Cy-FI/AAAAAAABD7g/nAAsOxbXY2o_3e3zrP5sbP8t1YYamHuAACLcB/${size}/card_club_01.png"
  "https://3.bp.blogspot.com/-hgsXIloqVyw/WQA_3LS3MPI/AAAAAAABD7k/cS7pXbmShe48ok5YfDPi_mDjS1qNHykFQCLcB/${size}/card_club_02.png"
  "https://4.bp.blogspot.com/-hIKME4x_kbQ/WQA_3IHzulI/AAAAAAABD7o/Ft4JOq2ydaEHteja59Zzv_i3ieXnmONwwCLcB/${size}/card_club_03.png"
  "https://1.bp.blogspot.com/-jK5dV2do-u4/WQA_6NL1_pI/AAAAAAABD7w/FocpXKcFQoMLuL108nfhcXh7hnNBG5XuQCLcB/${size}/card_club_04.png"
  "https://4.bp.blogspot.com/-YS0WFXKsMVw/WQA_6BXvi5I/AAAAAAABD7s/FtPj_2pOTp0vHv-o7SM0ypu7RGbdoqdWACLcB/${size}/card_club_05.png"
  "https://3.bp.blogspot.com/-8Badx_rITCw/WQA_6DLYUSI/AAAAAAABD70/rdTGjS1Ec8Ike1_G0foYxz6TURgQj0SAwCLcB/${size}/card_club_06.png"
  "https://2.bp.blogspot.com/-LXJw0prlZp0/WQA_6wZyEVI/AAAAAAABD74/eFWVHzCtgLMj_C-JPzjOd7YfhiveHytlQCLcB/${size}/card_club_07.png"
  "https://2.bp.blogspot.com/-MgspaQVG0TI/WQA_6-KkeCI/AAAAAAABD78/DpAaw1R2LM8tcD27tuYx0lYBdZQsI9qpwCLcB/${size}/card_club_08.png"
  "https://1.bp.blogspot.com/-E0A1v2Tf3Ew/WQA_6zYEsSI/AAAAAAABD8A/dr_ytvRhUW4RjIkrX2631ltJHQyLOA6ygCLcB/${size}/card_club_09.png"
  "https://1.bp.blogspot.com/-LzLb452BcCs/WQA_7ijljgI/AAAAAAABD8I/eti4IkCO6-0auSfwaVnOyV6nFlB29esUgCLcB/${size}/card_club_10.png"
  "https://3.bp.blogspot.com/-Bk_-puNIPyA/WQA_7UDvnSI/AAAAAAABD8E/oG18hpYtq2w8gGWxRK-ymX36O_H4YzmPQCLcB/${size}/card_club_11.png"
  "https://4.bp.blogspot.com/-KW4EpPTE2c8/WQA_8DZLdwI/AAAAAAABD8M/xq63m_MJ_5gNKter3MpQ-ynnfTy0JVASwCLcB/${size}/card_club_12.png"
  "https://3.bp.blogspot.com/-bicDHxSomXw/WQA_8CngNuI/AAAAAAABD8Q/NpuWFK68hEsccHaBxQXeJUOPSEseAqVKgCLcB/${size}/card_club_13.png"

  # ジョーカー
  "https://1.bp.blogspot.com/-tyf0OoeJeRA/WQBAEpNbS0I/AAAAAAABD-A/O9nnDdFy4pAXG48FoThkwcKddPYyHnOoACLcB/${size}/card_joker.png"

  # 裏面
  "https://4.bp.blogspot.com/-A_98ygeh-hs/WRLiKxndvtI/AAAAAAABEKo/qNM7t47lNCw4Sq0hEwJH5xhUaN8lnJf5gCLcB/${size}/card_back.png"

);

#-------------------------------------------
# ダウンロードする
#-------------------------------------------
for url in ${list[@]}; do
  echo $url
  curl -OLs $url
  sleep 1
done