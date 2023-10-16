local cmp = require('cmp')

cmp.setup {
    mapping = {
      ['<Tab>'] = function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
      else
          fallback()
      end
  end,
    ['<S-Tab>'] = function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        else
            fallback()
        end
    end
  }
}
