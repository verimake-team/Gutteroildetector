import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np
from pylab import *
from matplotlib.ticker import MultipleLocator, FormatStrFormatter
ax = plt.gca()
f=open("error.txt", 'r')
sourceInLine = f.readlines()
temp2=[]
ymajorLocator = MultipleLocator(0.05)
for line in sourceInLine:
    temp1 = line.strip().split(' ')
    temp2.append(int(temp1[0]))
##temp2 = set(temp2)
print(temp2.count(8288))

error = []
x=[]
for i in range(9000):
    x.append(i/1000)
    error.append(temp2.count(i)/65536)

error = np.array(error)
max_indx = np.argmax(error)
plt.xlim(0, 9)
plt.ylim(0, 0.20)
plt.xlabel("Errors in Output [x10$^3$]")
plt.ylabel('Error Occurrences')
plt.plot(x, error, color="#004680", linewidth=5)
ax.yaxis.set_major_locator(ymajorLocator)
plt.savefig('error.png', bbox_inches='tight', dpi=600)
plt.show()


##for val in error:

##    squaredError.append(val * val)  # target-prediction之差平方
##    absError.append(abs(val))  # 误差绝对值

##print("Errors: ", error)

##print("MSE = ", sum(squaredError) / len(squaredError))  # 均方误差MSE

##print("RMSE = ", sqrt(sum(squaredError) / len(squaredError)))  # 均方根误差RMSE
f.close()  # 关闭文件