function [X_thresh] = SVthresh(X, thresh)
[U, S, V] = svd(X);
S_thresh_max = S - thresh;
S_thresh_min = S + thresh;
S_thresh = max(S_thresh_max, 0) + min(S_thresh_min, 0);
X_thresh = U * S_thresh * V';
end