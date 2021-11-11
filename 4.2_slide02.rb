
def list(people)
    names = []
    people.each do |person|
        names<< person[:name]
    end

    if names.length <= 1
        puts names[0] 
    elsif names.length > 1
        puts names[0..-2].join(", ") + " & " + names[-1]
    end

end

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'
list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'
list([ {name: 'Bart'} ])
# returns 'Bart'
list([])