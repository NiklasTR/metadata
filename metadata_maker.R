#This is a small helper file that creates metadata which is necessary for cellprofiler to function.
#Usually the workflow is like this: 
#Take images
#Upload them to the inbox file
#Create metadata for the first cellprofiler pipeline (for example flatfield correction)
#Run the corresponding cellprofiler pipeline
#Start doing further downstream processing of the images

#Please fill out the 3 variables below. You can't break something. 
#This script will prompt the creation of the metadata file in the metadata directory

#Run this script by typing in the following command in the UNIX shell
#Rscript metadata_maker.R

#Reach me: My Broad e-mail, niklas_rindtorff@hms.harvard.edu or niklastimon@gmail.com


#where do you store your images on the S3 bucket
image_path = "~/bucket/inbox/703__2018-11-07T20_55_16-Measurement_1/Images"

#what channel are your images of interest
ch_number = "ch2"

#besides the directory name, do you want to give the metadata a specific name?
name = "brightfield"


#Executing R package dcphelper. Don't touch me unless you know what you are doing.
dcphelper::create_brightfield_metadata_new(path = image_path,
 ch_number = ch_number,
 name = name,
 interactive = FALSE)
