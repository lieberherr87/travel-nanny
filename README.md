root 'pages#home' x # diplay fetured offers


##BOTH
'users/login' x (+update)
'users/profile' x
'users/logout' x
'users/signup' x

'users/:id' x

'offers/:id' x # diplay info about the offer
'offers/new' x # create a new offer for current_user (+create)
'offers/:id/edit' x # edit the current offer # can be updated only by the owner


##PARENT
'offers' x # display all the offers

'offers/id/bookings/new' x (no reviews) # book a offer
'bookings' x # bookings as a parent (display future + past bookings)
'bookings/:id' x # get info about the booking, displayed as a modal
'bookings/:id/edit' #  displayed as a modal
'bookings/:id/reviews/new' x # add a new review for the booking


##NANNY

'my/offers/:id/destroy' x
'my/bookings' x # bookings as a nanny to manage your bookings
'my/bookings/:id' x # bookings as a nanny to manage your bookings, displayed as modal
'my/bookings/:id/edit' x # bookings as a nanny to edit your bookings, displayed as modal
