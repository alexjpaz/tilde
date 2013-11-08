import yaml
f = open('gnome3-keybindings.yaml')
# use safe_load instead load
dataMap = yaml.safe_load(f)
f.close()

print dataMap

def bindkey(shortcut, keystring):
	print shortcut, keystring



bindkey("lol","derp");
