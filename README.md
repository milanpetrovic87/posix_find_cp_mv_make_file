Shell script that finds all the files, starting from the selected
directory, and passes through all the sub directories, where files are named in the following pattern: “project_resource[n]_dev.yaml” (e.g.
“project_resource[1]_dev.yaml”, “project_resource[2]_dev.yaml”, “project_resource[3]_dev.yaml”, etc.) and rename all such files to
“project_resource[n]_prod.yaml” (e.g. “project_resource[1]_prod.yaml”, “project_resource[2]_prod.yaml”, “project_resource[3]_prod.yaml”, etc.).
During the execution process, in a separate line, write all the file names of both the original and the renamed file, separated by a coma
(e.g.: project_resource[1]_dev.yaml, project_resource[1]_prod.yaml”). 

Pay a close attention that file names may contain white spaces and
localized characters.
