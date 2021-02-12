# Usage: bash make-sbatch-sub.sh array python jobname
#   array: should either be "-1" for non-array jobs, or a comma and dash separated list of numbers to be passed to the --array argument.
#   jobname: the name of the file as well as the name of the job as well as the prefix of the .out and .err files.
#   python: 1 or 0: whether to load a python module and activate new-ada-env.

array=$1
python=$2
jobname=$3
jobfilename="$jobname.sub"

# todo: abort with a message if jobname exists already
if [[ -f "${jobfilename}" ]];then
    printf "file $jobfilename already exists, please choose a different jobname or delete the old version. \n"
else
    # write the most common header lines to the file named $jobname
    printf "#!/bin/bash \n#SBATCH --mail-type=ALL                   # Mail events (NONE, BEGIN, END, FAIL, ALL) \n#SBATCH --mail-user=hmj19qmu@uea.ac.uk    # Where to send mail \n#SBATCH -p compute-24-128                 # Which queue to use \n#SBATCH -t 24:00:00                 # Running time in hours \n#SBATCH --mem=8G \n#SBATCH --job-name=$jobname      # Job name\n" > $jobfilename

    if (($array==-1));then
        printf "#SBATCH -o $jobname-%%A.out    # Standard output log \n#SBATCH -e $jobname-%%A.err    # Standard error log" >> $jobfilename
    else
        printf "#SBATCH -o $jobname-%%A-%%a.out    # Standard output log \n#SBATCH -e $jobname-%%A-%%a.err    # Standard error log \n#SBATCH --array $array\n">> $jobfilename
    fi

    if (("$python">=1));then
        printf "\n\nmodule add python/anaconda/2020.07/3.8 \nsource activate new-ada-env\n" >> $jobfilename

    fi

    if (($array!=-1));then
        printf "\nSLURM_ARRAY_TASK_ID_sf=\$(printf %%02d \"\$SLURM_ARRAY_TASK_ID\")\n\n" >> $jobfilename
    fi

    printf "$jobfilename initialized, have fun with it.\n"
fi
