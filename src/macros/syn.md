# syn 库

书接上文, 过程宏经常要对 `TokenStream` 进行解析处理, 每次都手动操作非常无聊, 还容易出错;
可以用 syn 库来专门处理 `TokenStream`.