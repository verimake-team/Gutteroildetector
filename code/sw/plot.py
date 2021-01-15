import pandas as pd
import matplotlib.pyplot as plt
from sklearn.manifold import TSNE
from sklearn import manifold
from sklearn import decomposition
from sklearn.metrics import euclidean_distances

data = pd.read_csv('m3.txt')

oil_embedded = TSNE(n_components=2).fit_transform(data.iloc[:, :-1])
pos = pd.DataFrame(oil_embedded, columns=['X', 'Y'])
pos['label'] = data['label']

ax = pos[pos['label']=='gutter'].plot(kind='scatter', x='X', y='Y', color='#004680', label='gutter')
pos[pos['label']=='capsicol'].plot(kind='scatter', x='X', y='Y', color='#599d7f', label='capsicol', ax=ax)
pos[pos['label']=='soybeanoil'].plot(kind='scatter', x='X', y='Y', color='#c34b2e', label='soybeanoil', ax=ax)
pos[pos['label']=='colzaoil'].plot(kind='scatter', x='X', y='Y', color='#949494', label='colzaoil', ax=ax)
pos[pos['label']=='peanutoil'].plot(kind='scatter', x='X', y='Y', color='#6e66a5', label='peanutoil', ax=ax)
pos[pos['label']=='oliveoil'].plot(kind='scatter', x='X', y='Y', color='#ecca75', label='oliveoil', ax=ax)
plt.ylabel(None)
plt.xlabel(None)
plt.xticks([])  #去掉横坐标值
plt.yticks([])  #去掉纵坐标值
plt.savefig('tsne.png', bbox_inches='tight', dpi=600)
plt.show()


pd.plotting.parallel_coordinates(data, 'label',color=['#004680','#599d7f','#c34b2e','#949494','#6e66a5','#ecca75'])
plt.xticks(rotation=30)
plt.legend(loc="upper right",fontsize='small') #分别为图例无边框、图例放在右上角、图例大小
plt.savefig('m3.png', bbox_inches='tight', dpi=600)
plt.show()
'''
pd.plotting.andrews_curves(data, 'label')
plt.show()


similarities = euclidean_distances(data.iloc[:, :-1].values)
mds = manifold.MDS(n_components=2, max_iter=3000, eps=1e-9, dissimilarity="precomputed", n_jobs=1)
X = mds.fit(similarities).embedding_

pos_mds = pd.DataFrame(X, columns=['X', 'Y'])
pos_mds['label'] = data['label']

ax = pos_mds[pos_mds['label']=='gutter'].plot(kind='scatter', x='X', y='Y', color='blue', label='gutter')
pos_mds[pos_mds['label']=='capsicol'].plot(kind='scatter', x='X', y='Y', color='green', label='capsicol', ax=ax)
pos_mds[pos_mds['label']=='soybeanoil'].plot(kind='scatter', x='X', y='Y', color='red', label='soybeanoil', ax=ax)
pos_mds[pos_mds['label']=='colzaoil'].plot(kind='scatter', x='X', y='Y', color='slategray', label='colzaoil', ax=ax)
pos_mds[pos_mds['label']=='peanutoil'].plot(kind='scatter', x='X', y='Y', color='purple', label='peanutoil', ax=ax)
pos_mds[pos_mds['label']=='oliveoil'].plot(kind='scatter', x='X', y='Y', color='darkorange', label='oliveoil', ax=ax)
plt.show()



pca = decomposition.PCA(n_components=2)
X = pca.fit_transform(data.iloc[:,:-1].values)
pos_pca=pd.DataFrame()
pos_pca['X'] =X[:, 0]
pos_pca['Y'] =X[:, 1]
pos_pca['label'] = data['label']
ax = pos_pca[pos_pca['label']=='gutter'].plot(kind='scatter', x='X', y='Y', color='blue', label='gutter')
pos_pca[pos_pca['label']=='capsicol'].plot(kind='scatter', x='X', y='Y', color='green', label='capsicol', ax=ax)
pos_pca[pos_pca['label']=='soybeanoil'].plot(kind='scatter', x='X', y='Y', color='red', label='soybeanoil', ax=ax)
pos_pca[pos_pca['label']=='colzaoil'].plot(kind='scatter', x='X', y='Y', color='slategray', label='colzaoil', ax=ax)
pos_pca[pos_pca['label']=='peanutoil'].plot(kind='scatter', x='X', y='Y', color='purple', label='peanutoil', ax=ax)
pos_pca[pos_pca['label']=='oliveoil'].plot(kind='scatter', x='X', y='Y', color='darkorange', label='oliveoil', ax=ax)
plt.show()


fica = decomposition.FastICA(n_components=2)
X = fica.fit_transform(data.iloc[:,:-1].values)
pos_ica=pd.DataFrame()
pos_ica['X'] =X[:, 0]
pos_ica['Y'] =X[:, 1]
pos_ica['label'] = data['label']
ax = pos_ica[pos_ica['label']=='gutter'].plot(kind='scatter', x='X', y='Y', color='blue', label='gutter')
pos_ica[pos_ica['label']=='capsicol'].plot(kind='scatter', x='X', y='Y', color='green', label='capsicol', ax=ax)
pos_ica[pos_ica['label']=='soybeanoil'].plot(kind='scatter', x='X', y='Y', color='red', label='soybeanoil', ax=ax)
pos_ica[pos_ica['label']=='colzaoil'].plot(kind='scatter', x='X', y='Y', color='slategray', label='colzaoil', ax=ax)
pos_ica[pos_ica['label']=='peanutoil'].plot(kind='scatter', x='X', y='Y', color='purple', label='peanutoil', ax=ax)
pos_ica[pos_ica['label']=='oliveoil'].plot(kind='scatter', x='X', y='Y', color='darkorange', label='oliveoil', ax=ax)
plt.show()
'''

