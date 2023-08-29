#
# 公開されているHelpfeelデータのタイトルを取得
# hikizan.orgで比較する
#

bank:
	wget -q -O - https://helpfeel.com/hokugin-faq/data/helpdata.json | jq -r '.faqs[].title' > hokugin.txt
	wget -q -O - https://help.iyobank.co.jp/data/helpdata.json | jq -r '.faqs[].title' > iyobank.txt
	wget -q -O - https://helpfeel.com/sendaibank/data/helpdata.json | jq -r '.faqs[].title' > sendaibank.txt

town:
	wget -q -O - https://helpfeel.com/yokosuka-city-faq/data/helpdata.json | jq -r '.faqs[].title' > yokosuka.txt

cable:
	wget -q -O - https://faq.canet.ne.jp/data/helpdata.json | jq -r '.faqs[].title' > imizu.txt
	wget -q -O - https://helpfeel.com/nice-tv/data/helpdata.json | jq -r '.faqs[].title' > nicetv.txt

all: bank town cable
