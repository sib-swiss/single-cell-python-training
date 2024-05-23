#!/usr/bin/env bash
# run this commands in the admin container

sudo su
cd /data
curl -o cellranger-8.0.1.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-8.0.1.tar.gz?Expires=1716495988&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=VybkkGYqqJR3YdhlnD3P7q7X12BDu93rda5Y~4Jb8hIQWHo7lc9mYHT-S1Py72bIMTHDRttzrbQ0U6pdSdWt9HmoZwoeARIVhM~J1dXIR8rN1at90cwdkOm73M2HG1EuNk0TmLGQZr9LFO~2W3wPXKSW3643ctDvbUfqg5ecmAut22mmWcVB43bMSwjPkkUjrOLU9~w2bmaKqbHE5isAC3KkcmSQwsBf0T59JvwiByYrHpTf3cU3MDPbN8BXzuhSwCujqE6CHyeZllb3D9D6-OJ15BkhLDvwoTwAmoznkxDUKa9ObrBYUmSk0XjD9snig0LolgY1MVyNpclRrOaBQA__"
tar -xzvf cellranger-8.0.1.tar.gz

# now users need to add the cellranger directory to their path with
# export PATH=$PATH:/data/cellranger-8.0.1
# for users data is mounted to the root directory

# also download the reference data
wget https://single-cell-transcriptomics.s3.eu-central-1.amazonaws.com/cellranger_index.tar.gz
tar -xvf cellranger_index.tar.gz
rm cellranger_index.tar.gz
