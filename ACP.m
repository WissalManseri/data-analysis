
% Nos données (fiche tp2)
X = [1 2 3 4; 2 4 6 8; 3 6 9 12];

% Centrage des données
X_centered = X - mean(X);

% Calcul de la matrice de covariance
covariance_matrix = cov(X_centered);

% Calcul des valeurs propres et vecteurs propres
[eigen_vectors, eigen_values] = eig(covariance_matrix); 
 %NOTE :: 
 %Lorsque les données sont homogènes, cela signifie qu'elles sont toutes mesurées dans la même unité.

% Tri des vecteurs propres et des valeurs propres
[eigen_values_sorted, indices] = sort(diag(eigen_values), 'descend');
eigen_vectors_sorted = eigen_vectors(:, indices);


% Projection des données sur les nouvelles variables
X_pca = X_centered * eigen_vectors_sorted;



