function! GuiTabLabel()
    return bufname(winbufnr(1))
endfunction

set guitablabel=%{GuiTabLabel()}
