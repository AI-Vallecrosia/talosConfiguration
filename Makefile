VERSION_CLUSTER_TOOL=v1.0.0-BETA-5
NAME_ARCHIVE=clustertool_1.0.0-BETA-5_linux_amd64
DIR_CLUSTER_TOOL=clusterTool



ARCHIVE=$(NAME_ARCHIVE).tar.gz

all: $(DIR_CLUSTER_TOOL)/clustertool


$(DIR_CLUSTER_TOOL)/clustertool: $(DIR_CLUSTER_TOOL)/$(ARCHIVE)
	tar -zxvf $< -C $(DIR_CLUSTER_TOOL)/


$(DIR_CLUSTER_TOOL)/$(ARCHIVE):
	mkdir -p $(DIR_CLUSTER_TOOL)
	wget https://github.com/truecharts/clustertool-public/releases/download/$(VERSION_CLUSTER_TOOL)/$(ARCHIVE) -P $(DIR_CLUSTER_TOOL)/
	



.PHONY: clean all


clean:
	rm -fr $(DIR_CLUSTER_TOOL)/*
