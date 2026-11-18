def message_decode_tutorial(message, c):
    holder = ""
    for letter in range(0, len(message)):
        if (letter + 1) % c == 0
            holder = holder + message[letter]
    return holder

message = 'gT baZu lWp Kjv uXyeS nViU fdlH gJr KaIc tBpl Sy\
Jox MtUl Qbm kGTp UdHe hdLJf Nu IcPRu XhBtDjf TsmPf\
o DoKfw xP xfudt Zyvt  fge41sth h sd3 axe gyt fff  qyTcJ tUpYrv Pk ArBCf Wrtp JfRcX JqPdKLC 12345asd!'

cypher = message_decode_tutorial(message, 10)

print(cypher)

