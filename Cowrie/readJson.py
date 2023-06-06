# 
import sys
import json

with open(sys.argv[1]) as f: #コマンド引数のファイルを開く
    for line in f: # ファイルから一行ずつ読み込む
        dic = json.loads(line) # 1行のJSONデータを辞書形式に変換する
        if dic['eventid'] == 'cowrie.command.input':
#            print(json.dumps(dic, indent=4, sort_keys=False))
            print(dic['input'])
            #print(dic['src_ip'])
#       if dic['eventid'] == 'cowrie.login.success':
#            print(json.dumps(dic, indent=4, sort_keys=True))
#            print(dic['username'])