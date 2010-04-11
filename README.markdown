# Motivation

Liquid layouts: the practice (among other things) of rendering a single ul/li group (like this):

    <ul>
      <li>1</li>
      <li>2</li>
      <li>3</li>
      <li>4</li>
      <li>5</li>
      <li>6</li>
      <li>7</li>
      <li>8</li>
      <li>9</li>
      <li>10</li>
      <li>11</li>
    </ul>

into a multi-column layout like this: 
  
    1   2   3
    4   5   6
    7   8   9
    10  11

using CSS like this: 

    <style type="text/css">
      ul {width: 30%}
      li {width: 33%; text-align: left; float: left}
    </style>


But what if you wanted the data sorted by column, not by row? For this, CSS is inadequate: it's capable of flowing from left to right, top to bottom. So in order to acheive a column sorting, we need to resort the data, like this: 

    <ul>
      <li>1</li>
      <li>5</li>
      <li>9</li>
      <li>2</li>
      <li>6</li>
      <li>10</li>
      <li>3</li>
      <li>7</li>
      <li>11</li>
      <li>4</li>
      <li>8</li>
      <li></li>
    </ul>

Using the same CSS, this would render: 

    1   5   9
    2   6   10
    3   7   11 
    4   8

The Columnizer haskell module exports "columnSort" method that operates on a list, making it simple to resort your collection for a column-sorted liquid layout.

e.g.:
    
    -- suppose we intended to render this list in
    -- a 2 col liquid layout
    a = [1..10]

    -- sort a for use by a 2 column liquid layout
    columnSort a 2
    -- this would return: [1,6,2,7,3,8,4,9,5,10]
