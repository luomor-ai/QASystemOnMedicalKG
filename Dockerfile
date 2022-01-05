FROM python:3.6
RUN sudo pip3 install py2neo
RUN pip3 install pyahocorasick -i https://pypi.tuna.tsinghua.edu.cn/simple/
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone
WORKDIR /medical
COPY . .
# localhost neo4j
RUN sed -i 's/localhost/neo4j/g' answer_search.py
RUN sed -i 's/localhost/neo4j/g' build_medicalgraph.py
ENTRYPOINT ["python","chatbot_graph.py"]