cmdnom = (require 'supernom').cmdnom

cmdtree = do
   _help: 'Default'

cmdtree <<<
   somecommand:
      _opts:
         name:
            _help: 'Specify the name'
            _count: 1
            _required: true
      _help: 'Create somwthing new'
      _cmd: (opts) ->
         console.log opts.name


# Run!
cmdnom.execute cmdtree, process.argv
