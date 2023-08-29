all:
	wget -q -O - https://helpfeel.com/hokugin-faq/data/helpdata.json | jq . | grep 'title"' > hokugin.txt
	wget -q -O - https://help.iyobank.co.jp/data/helpdata.json | jq . | grep 'title"' > iyobank.txt
	wget -q -O - https://helpfeel.com/sendaibank/data/helpdata.json | jq . | grep 'title"' > sendaibank.txt

machi:
	wget -q -O - https://helpfeel.com/yokosuka-city-faq/data/helpdata.json | jq . | grep 'title"' > yokosuka.txt

cable:
	wget -q -O - https://faq.canet.ne.jp/data/helpdata.json | jq . | grep 'title"' > imizu.txt
	wget -q -O - https://helpfeel.com/nice-tv/data/helpdata.json | jq . | grep 'title"' > nicetv.txt
