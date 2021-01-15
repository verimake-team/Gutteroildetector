import time
from sklearn import svm
from sklearn.neighbors import KNeighborsClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.tree import DecisionTreeClassifier
import numpy as np
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error
from sklearn.metrics import cohen_kappa_score
from sklearn.metrics import hamming_loss
from sklearn.metrics import f1_score, precision_score, recall_score
'''     
it = {b'gutter': 0, b'capsicol': 1, b'soybeanoil': 1,           
	  b'colzaoil': 1, b'peanutoil': 1, b'oliveoil': 1}     
'''


def label(s):
    it = {b'gutter': 0, b'capsicol': 1, b'soybeanoil': 2,
          b'colzaoil': 3, b'peanutoil': 4, b'oliveoil': 5}
    return it[s]


# 1.读取数据集
path = '2.data'
data = np.loadtxt(path, dtype=float, delimiter=',', converters={6: label})

# 2.划分数据与标签
x, y = np.split(data, indices_or_sections=(6,), axis=1)  # x为数据，y为标签
x = x[:, :6]
train_data, test_data, train_label, test_label = train_test_split(x, y, random_state=1, train_size=0.6,
                                                                  test_size=0.4)  # sklearn.model_selection.

# 3.训练svm分类器
classifier = svm.SVC(C=2, kernel='rbf', gamma=10, decision_function_shape='ovo')  # ovr:一对多策略
classifier.fit(train_data, train_label.ravel())  # ravel 函数在降维时默认是行序优先
start = time.perf_counter()
knn = KNeighborsClassifier()
knn.fit(train_data, train_label.ravel())
time.sleep(1.000)
elapsed = (time.perf_counter() - start)
print("Time used:",elapsed)
dtc = DecisionTreeClassifier()
dtc.fit(train_data, train_label.ravel())

rf = RandomForestClassifier()
rf.fit(train_data, train_label.ravel())

# 计算svc分类器的准确率
'''
print("svm训练集：", classifier.score(train_data, train_label))
print("svm测试集：", classifier.score(test_data, test_label))
print("knn训练集：", knn.score(train_data, train_label))
print("knn测试集：", knn.score(test_data, test_label))
'''
# 也可直接调用accuracy_score方法计算准确率
tra_label_svm = classifier.predict(train_data)  # 训练集的预测标签
tes_label_svm = classifier.predict(test_data)  # 测试集的预测标签
tra_label_knn = knn.predict(train_data)
tes_label_knn = knn.predict(test_data)
tra_label_dtc = dtc.predict(train_data)
tes_label_dtc = dtc.predict(test_data)
tra_label_rf = rf.predict(train_data)
tes_label_rf = rf.predict(test_data)

print("svm训练集：", accuracy_score(train_label, tra_label_svm))
print("svm测试集：", accuracy_score(test_label, tes_label_svm))
print("knn训练集：", accuracy_score(train_label, tra_label_knn))
print("knn测试集：", accuracy_score(test_label, tes_label_knn))
print("dtc训练集：", accuracy_score(train_label, tra_label_dtc))
print("dtc测试集：", accuracy_score(test_label, tes_label_dtc))
print("rf训练集：", accuracy_score(train_label, tra_label_rf))
print("rf测试集：", accuracy_score(test_label, tes_label_rf))


print('svm f1', f1_score(test_label, tes_label_svm, average='weighted'))
print('svm p', precision_score(test_label, tes_label_svm, average='weighted'))
print('svm r', recall_score(test_label, tes_label_svm, average='weighted'))

print('knn f1', f1_score(test_label, tes_label_knn, average='weighted'))
print('knn p', precision_score(test_label, tes_label_knn, average='weighted'))
print('knn r', recall_score(test_label, tes_label_knn, average='weighted'))

print('dtc f1', f1_score(test_label, tes_label_dtc, average='weighted'))
print('dtc p', precision_score(test_label, tes_label_dtc, average='weighted'))
print('dtc r', recall_score(test_label, tes_label_dtc, average='weighted'))

print('rf f1', f1_score(test_label, tes_label_rf, average='weighted'))
print('rf p', precision_score(test_label, tes_label_rf, average='weighted'))
print('rf r', recall_score(test_label, tes_label_rf, average='weighted'))

print('svm cohen_kappa_score:', cohen_kappa_score(test_label, tes_label_svm))
print('knn cohen_kappa_score:', cohen_kappa_score(test_label, tes_label_knn))
print('dtc cohen_kappa_score:', cohen_kappa_score(test_label, tes_label_dtc))
print('rf cohen_kappa_score:', cohen_kappa_score(test_label, tes_label_rf))

print('svm ham_distance:', hamming_loss(test_label, tes_label_svm))
print('knn ham_distance:', hamming_loss(test_label, tes_label_knn))
print('dtc ham_distance:', hamming_loss(test_label, tes_label_dtc))
print('rf ham_distance:', hamming_loss(test_label, tes_label_rf))

# 查看决策函数
'''
print('train_decision_function:\n', classifier.decision_function(train_data))  # (90,3)
print('predict_result:\n', classifier.predict(train_data))

print('svm rmse:', mean_squared_error(test_label, tes_label_svm, squared=False))
print('knn rmse:', mean_squared_error(test_label, tes_label_knn, squared=False))
print('dtc rmse:', mean_squared_error(test_label, tes_label_dtc, squared=False))
print('rf rmse:', mean_squared_error(test_label, tes_label_rf, squared=False))
'''