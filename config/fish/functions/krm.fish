function read_confirm
  while true
    read -l -p read_confirm_prompt confirm

    switch $confirm
      case Y y
        return 0
      case '' N n
        return 1
    end
  end
end

function read_confirm_prompt
  echo 'Do you want to continue? [Y/n] '
end

function krm
   set current_kernel_no (uname -a | awk '{print $3}' | awk -F '-generic' '{print $1}')
   set max_kernel_no (dpkg -l "linux-image*" | grep -e  '^ii.*generic' |  grep -v "extra" | grep -v "linux-image-generic" | awk '{print $3}' | sort -V | tail -n1 | awk -F '.' '{print $1,$2,$3}' | tr ' ' '.' )

   echo "Kernel information:"
   echo "==================="
   echo "    "current: $current_kernel_no
   echo "    "maximal: $max_kernel_no
   echo "    "removables:

   for k in (dpkg -l "linux-image*" | grep -e  '^ii.*generic' | grep -v extra | grep -v "linux-image-generic" | awk '{print $3}' | grep -v $current_kernel_no | grep -v $max_kernel_no | awk -F '.' '{print $1,$2,$3}' | tr ' ' '.')
      echo "        "$k
   end

   if read_confirm
      for k in (dpkg -l "linux-image*" | grep -e  '^ii.*generic' | grep -v extra | grep -v "linux-image-generic" | awk '{print $2}' | grep -v $current_kernel_no | grep -v $max_kernel_no)
         sudo apt-get remove --purge $k
      end
      sudo apt-get autoremove
      sudo apt-get autoclean

      echo ""
      echo "Free Space information:"
      echo "======================="
      df -h
   end

end
