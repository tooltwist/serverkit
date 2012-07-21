#
#!/bin/sh
#
#	This script is used to bootstrap a new ToolTwist sever configuration
#
dir=`dirname $0`
echo dir=${dir}



# Check that 'mainProject' is defined.
[ -r ${dir}/MAIN_PROJECT ] && MAIN_PROJECT=`cat ${dir}/MAIN_PROJECT`

while true; do
	tmp=""
	[ ! -z "${MAIN_PROJECT}" ] && tmp="[${MAIN_PROJECT}]";
	echo -n "What is the main webdesign project? ${tmp}"
	read new_main_project
	[ ! -z "${new_main_project}" ] && MAIN_PROJECT=${new_main_project}
	[ ! -z "${MAIN_PROJECT}" ] && break
done
echo ${MAIN_PROJECT} > ${dir}/MAIN_PROJECT
