windup-tattletale
=================

Scripts and tools to run tattletale and windup on apps

The idea is to first run the create-folders script to create the following folders 

- ./archives/
in which the apps to be evaluated are to be put
- ./tattletale-reports/
in which the result of the run of the jboss-tattletale.sh are placed
- ./windup-reports/
in which the result of the run of the jboss-windup.sh are placed

After putting the EAR's and/or WAR's to be evaluated into the archives folder, go nuts in running the jboss scripts. After running these analysis scripts, run the remove scripts to remove any empty folders so the successful evaluations can be found more easily.
