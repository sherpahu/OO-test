from sympy import *
from sympy.abc import x
from random import choice
import sys

def main(canshu1,canshu2):
    expected=canshu1
    actual=canshu2
    '''
    TO-DO:
    WRONG FORMAT的异常处理
    '''
    expected = expected.replace("^","**")
    actual = actual.replace("^","**")

    out=diff(eval(expected))
    #print(out)#视情况输出
    ans=eval(actual)

    print(simplify(simplify(out)-simplify(ans)) == 0 ,end="")
    print(simplify(out-ans) == 0,end="")
    print(out.equals(ans))
main(sys.argv[1],sys.argv[2])

#完全模拟评测方法, 效果不好
'''
numList=[-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6,7,8,9,10]
for i in range(1000):
    #num=choice(range(-10,10))
    num=choice(numList)
    out = out.subs(x, num)
    ans = ans.subs(x, num)
    #print(num)
    #print(out)
    #print(ans)
    #assert out==ans
    assert float(out) == float(ans)
'''
#print(float(out.subs(x, 7)*10000))
