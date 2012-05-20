class FakeTwitterClient
  def per_page(n)
    self
  end
  
  def from(username)
    tweets = [{ :text => 'tweet1'},
              { :text => 'tweet2'},
              { :text => 'tweet3'},
              { :text => 'tweet4'},
              { :text => 'tweet5'}]
  end
  
end