
# 容器 Collections

现代的语言多少都提供了一些常用的容器类, 下面的表格, 将 Rust 的容器类与其它语言作了对比:

| Rust                             | 描述          | C++                 | Python |
|----------------------------------|-------------|---------------------|----|
| Vec<T>                           | 列表(动态数组)    | vector<T>           | list |
| VecDeque<T>                      | 双端队列        | deque<T>            | collections.deque |
| LinkedList<T>                    | 双向链表        | list<T>             | - |
| BinaryHeap<T> where T: Ord       | 优先级队列       | priority_queue<T>   | heapq |
| HashMap<K, V> where K: Eq + Hash | 哈稀表         | unordered_map<K, V> | dict |
| BTreeMap<K, V> where K: Ord      | 有序键-值对(B-树) | map<K, V>           | - |
| HashSet<T> where T: Eq + Hash    | 基于哈稀的集合     | unordered_set<T> | set |
| BTreeSet<T> where T: Ord | 有序集合 (B-树)  | set<T> | - |

接下来, 会对这些容器类做具体说明.