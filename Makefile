


all: clusterTool/clustertool


clusterTool/clustertool: clusterTool/clustertool_linux_amd64.tar.gz
	tar -zxvf $< -C clusterTool/


clusterTool/clustertool_linux_amd64.tar.gz:
	mkdir -p clusterTool
	wget https://github.com/truecharts/clustertool-public/releases/download/v1.0.0-ALPHA-12/clustertool_linux_amd64.tar.gz -P clusterTool/
	



.PHONY: clean all


clean:
	rm -r clusterTool/*
