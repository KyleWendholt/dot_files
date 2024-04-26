# Tmux

Show all sessions

ctrl+b=prefix
ctrl+hjkl=switch panes

c=create window
d=disconnect
n=next window
space=toggle between pane layouts
-=split horizontal pane
|=split vertical pane
s=session view
w=window view
z=fullscreen toggle


# Nvim

I=insert mode beginning of the line
gi=insert last insert location
ctrl+a=+1
ctrl+x=-1

## tricks
block highlight section, then A or I to add to begiining or end. must use ESC intead of ctrl c though. need to select to end of line for A, so use $ if need to append to end of line


### insert mode only
ctrl+h=delete last char typed
ctrl+w=delete last word typed
ctrl+u=delete last line typed
ctrl+r"=put

u=undo
U=undo all changes to last line you changed
ctrl+r=redo

gt=next tab
gT=previous tab

ctrl+v=block highlighting
o=front or back
O=font or back block highlighting

:{range}s/{pattern}/{replace}/{flags}
g=global
%=whole line

f=go to
t=go until
caps go backwards
;=next
,=previous

0=first char
^=first non-blank char
$=end of line
g_=last non black char

{=paragraph forward
}=paragraph back

J=join to next line
K=help for word

/=search forwards
?=search backwards
n=next match
N=previous match
*=/{word}

ctrl+O=jump back
ctrl+I=jump forwards

%=match bracket

D=delete to end of line

C=change to end of line
cc=change complete line

.=repeat command

## Add ons

a=object+whitespace
i=object

s=sentence
p=paragraph

b=(block)
B={block}
t=<block>

==format
<=decrease indent
>=increase indent
~=toggle caps
x=delete char
s=change char
