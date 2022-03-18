IMAGE = test/test
TAG   = 0.0.1
 
ui: ## Создание сжатого docker-образа для контейнера ui
  docker build -f ui/Dockerfile --squash -t $(REGISTRY):ui ui
ui: ## Создание сжатого docker-образа для контейнера comment
  docker build -f comment/Dockerfile --squash -t $(REGISTRY):comment comment
ui: ## Создание сжатого docker-образа для контейнера post
  docker build -f post/Dockerfile --squash -t $(REGISTRY):post post
ui: ## Создание сжатого docker-образа для контейнера prometheus
  docker build -f prometheus/Dockerfile --squash -t $(REGISTRY):prometheus prometheus


push:
 @docker push $USER_NAME/ui
 @docker push $USER_NAME/comment
 @docker push $USER_NAME/post
 @docker push $USER_NAME/prometheus
 
