#include <iostream>
#include <algorithm>
#include <utility>
#include <vector>
#include <set>
#include <map>
#include <cctype>
#include <chrono>
#include <numeric>
#include <cmath>
#include <climits>
#include <iomanip>
#include <queue>
#include <string>
using namespace std;
using ll = long long;
// #define int long long
using vi = vector<int>;
using vll = vector<ll>;
using vvi = vector<vector<int> >;
using vvll = vector<vll>;
using vs = vector<string>;
using vvc = vector<vector<char> >;
using pii = pair<int, int>;
using pll = pair<ll, ll>;
using vpii = vector<pii>;
using vpll = vector<pll>;
#define el '\n'
#define Yes cout << "Yes\n"
#define No cout << "No\n"
#define rep(i, n) for(int i = 0; i < (int)(n); i++)
#define lrep(i, n) for(ll i = 0; i < (ll)(n); i++)
#define rep2(i, s, n) for(int i = (int)(s); i < (int)(n); i++)
#define rrep(i, n) for(int i =(int)(n)-1; i >= 0; i--)
#define rrep2(i, b, n) for(int i =(int)(n); i > (int)(b); i--)
#define erep(i, n) for(int i = 0; i <= (int)(n); i++)
#define erep2(i, s, n) for(int i = (int)(s); i <= (int)(n); i++)
#define vin(array, size) rep(i, (int)(size))cin >> array[i]
#define pb emplace_back
#define all(v) v.begin(), v.end()
#define rall(v) v.rbegin(), v.rend()
#define spa " "
#define len size()
#define unless(c) if(!(c))
#define yn(c) c ? Yes : No
struct Init { Init() { ios::sync_with_stdio(0); cin.tie(0); } }init; // printf()を使うときは消す.
const int inf = INT_MAX;
const ll INF = LLONG_MAX;

// 回転用関数 //
vector<string> rotate(vector<string> s) {
    int h = s.size(), w = s[0].size();
    vector<string> res(w, string(h, '.'));
    for(int i = 0;i < h; i++) {
        for(int j = 0; j < w; j++) {
            res[j][h-1-i] = s[i][j];
        }
    }
    return res;
}

/*
.len => .size()
pb => emplace_back
all(v) => v.begin(), v.end()
rall(v) => reverse all
*/

void solve() {

    return ;
}

int main() {
    solve();

    return 0;
}
