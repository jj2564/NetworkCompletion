# NetworkCompletion
Sample of  problem which I meet from work.

這是一個遇到的結構，看起來目的是為了建造一個可以輪轉到很多不同頁面而建立的Code。
當時看到有用`[weak self]`就順手補上了
```swift
guard let self = self else { return }
```
然後就全部都被return掉了。

---

所以也算是一個該記取經驗的事件，改別人的Code還是要看仔細裡面在幹嘛...
