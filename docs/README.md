```shell script
python3 build_medicalgraph.py
python3 chat_graph.py

sudo pip3 install py2neo
sudo pip3 uninstall py2neo
# py2neo (2021.2.3)
pip3 install py2neo==
sudo pip3 install py2neo==4.3.0
```

```python
Graph("bolt://localhost:7687", auth=("neo4j", "123456"))
        self.g = Graph(
            host="127.0.0.1",
            http_port=7474,
            user="neo4j",
            password="123456")
```