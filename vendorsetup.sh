if [ -z ${variant} ]; then
  export variant="userdebug";
fi

for combo in $(ls vendor/twisted/products/twisted_*.mk | sed -e 's/vendor\/twisted\/products\///' -e "s/.mk/-$variant/")
do
add_lunch_combo ${combo}
done

