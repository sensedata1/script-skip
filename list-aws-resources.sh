#!/bin/bash


REGIONS=$(aws ec2 describe-regions --query Regions[*].RegionName --output text)

echo '*****************************************'
echo '*** Listing resources for all regions ***'
echo '*****************************************'

for REGION in $REGIONS; do
	echo $REGION
	aws resourcegroupstaggingapi get-resources --region $REGION
done	
