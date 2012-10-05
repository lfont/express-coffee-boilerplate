#
# GET home page.
#

exports.index = (req, res) ->
    res.render 'home/index',
                title: 'Express'
