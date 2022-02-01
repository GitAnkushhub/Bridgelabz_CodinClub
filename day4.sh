for item in `ls`
do
   nameOfFile=`echo $item | awk -F. '{ print $1 }'`
   Ext=`echo $item | awk -F. '{ print $2 }'`
   if [ -d $nameOfFile $Ext ]
   then
       echo "** This Is Inside IF-Block ***"
       rm -rf $nameOfFile $Ext
   fi
   mkdir -p $nameOfFile $nameOfFile/$Ext
   cp -r $item $nameOfFile 
done


