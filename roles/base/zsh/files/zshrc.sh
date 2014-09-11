# include sub settings
for config in $(find ~/.zshrc.d -name "*.sh"); do
  source $config;
done

# include local setting
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
