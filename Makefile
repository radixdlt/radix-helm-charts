CHARTS_DIR = charts

package: $(CHARTS_DIR)/*
	helm package $^ -d artifacts

lint: $(CHARTS_DIR)/*
	helm lint $^

index:
	helm repo index --merge index.yaml .
