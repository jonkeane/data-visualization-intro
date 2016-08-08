:title: Introduction to Data Visualization
:author: Jon, Diego, Kris, Monica, and Ned
:description: Topics in data visualization
:keywords: visualizatoin, data
:css: style.css
:data-transition-duration: 500


----

Introduction to Data Visualization
==================================

----

Today
=====

* Data visualization theory
		* systematic visualization
		* human perception
* Visualization critiques
* Visualization in Python with MatPlotLib
* Visualization in R with ggplot2 and ggvis
* Visualization in Javascript with d3

slides, references, and code is available at:

github.com/jonkeane/data-visualization-intro

----

Why visualize?
==============

+------+-------+-------+-------+-------+-------+------+-------+
|x1    |y1     |x2     |y2     |x3     |y3     |x4    |y4     |
+======+=======+=======+=======+=======+=======+======+=======+
| 10.0 |  8.04 |  10.0 |  9.14 |  10.0 |  7.46 |  8.0 |  6.58 |
+------+-------+-------+-------+-------+-------+------+-------+
|  8.0 |  6.95 |  8.0  |  8.14 |  8.0  |  6.77 |  8.0 |  5.76 |
+------+-------+-------+-------+-------+-------+------+-------+
| 13.0 |  7.58 | 13.0  |  8.74 | 13.0  | 12.74 |  8.0 |  7.71 |
+------+-------+-------+-------+-------+-------+------+-------+
|  9.0 |  8.81 |  9.0  |  8.77 |  9.0  |  7.11 |  8.0 |  8.84 |
+------+-------+-------+-------+-------+-------+------+-------+
| 11.0 |  8.33 | 11.0  |  9.26 | 11.0  |  7.81 |  8.0 |  8.47 |
+------+-------+-------+-------+-------+-------+------+-------+
| 14.0 |  9.96 | 14.0  |  8.10 | 14.0  |  8.84 |  8.0 |  7.04 |
+------+-------+-------+-------+-------+-------+------+-------+
|  6.0 |  7.24 |  6.0  |  6.13 |  6.0  |  6.08 |  8.0 |  5.25 |
+------+-------+-------+-------+-------+-------+------+-------+
|  4.0 |  4.26 |  4.0  |  3.10 |  4.0  |  5.39 | 19.0 | 12.50 |
+------+-------+-------+-------+-------+-------+------+-------+
| 12.0 | 10.84 | 12.0  |  9.13 | 12.0  |  8.15 |  8.0 |  5.56 |
+------+-------+-------+-------+-------+-------+------+-------+
|  7.0 |  4.82 |  7.0  |  7.26 |  7.0  |  6.42 |  8.0 |  7.91 |
+------+-------+-------+-------+-------+-------+------+-------+
|  5.0 |  5.68 |  5.0  |  4.74 |  5.0  |  5.73 |  8.0 |  6.89 |
+------+-------+-------+-------+-------+-------+------+-------+

----

These are all the same!
========================


+-----------------------------+-------------------+
|Property                     |Value              |
+=============================+===================+
|Mean of x                    |9                  |
+-----------------------------+-------------------+
|Sample variance of x         |11                 |
+-----------------------------+-------------------+
|Mean of y                    |7.50               |
+-----------------------------+-------------------+
|Sample variance of y         |4.122 or 4.127     |
+-----------------------------+-------------------+
|Correlation between x and y  |0.816              |
+-----------------------------+-------------------+
|Linear regression line       |y = 3.00 + 0.500x  |
+-----------------------------+-------------------+

----

Visualization isn't just an art
================================

----

There are principles that help make visualizations effective
================================================================

----

Kinds of comparisons
====================

* quantitative or interval
		* height, weight, age, income
* ordinal
		* education level, counts (sometimes)
* nominal
		* city, zip code, race, gender

----




Visual marks or geometries
==========================

.. image:: images/visual-variables-only.png

----

Visual encoding
===============

* The mark used should match the the data that is being visualized.
* The mark used should be easy to perceive.

.. note:: This was extended by Leland Wilkinson's *The Grammar of Graphics.*

----

Visual encoding map
===================

.. image:: images/visual-variables.png


*adapted from: joeparry.wordpress.com/2007/08/29/visual-variables*

----




How big is the bigger circle?
=============================

.. image:: images/circleAreas.png
  :height: 650px

.. note:: Truth: 16, estimates usually range from 4-50

----


So-called Perceptual scaling
=============================

Because of this problem, some visualization software tries to help by scaling
area encodings to be closer to the average perceptual errors.

.. image:: images/apparentmagnitudegraph.png
  :height: 450px

This is still problematic because there is wide individual variation.

.. note:: ArcGIS for example will compensate with corrections from Flannery

----

and worse: your eyes lie
=========================

.. image:: images/ebbinghaus.svg
    :width: 750px

----

Don't believe me?
==========================

.. image:: images/ebbinghaus.gif
    :width: 750px

----


Within the bar bias
====================

.. image:: images/within-the-bar-bias-fig2.svg
  :height: 650px

----

Rated as more likely
====================

.. image:: images/within-the-bar-bias-fig2-higher.svg
  :height: 650px

----





Visualization Critiques
========================
----

Bars, bars everywhere!
======================

.. image:: images/carrier-origin-bars.png
  :height: 650px

----

Better...
======================

.. image:: images/carrier-origin-dots.png
  :height: 650px

----


Arrival delays
======================

.. image:: images/arr-delay-line.png
  :height: 650px

----

Now with SEs!
======================

.. image:: images/arr-delay-ribbon.png
  :height: 650px

----

Maybe bars are better?
======================

.. image:: images/arr-delay-bar.png
  :height: 650px

----


Now with more SEs!
======================

.. image:: images/arr-delay-bar-error.png
  :height: 650px

----

Closer... what happened??
=========================

.. image:: images/arr-delay-boxplot.png
  :height: 650px

----

Violin plots
======================

.. image:: images/arr-delay-violin.png
  :height: 650px

----

Zoomed in (use caution!)
==========================

.. image:: images/arr-delay-violin-cropped.png
  :height: 650px

.. note:: Providing the context of the full violin plot is extremely important here. Without it it looks like the long tails for a variety of carriers don't exist at all.

----


Departure delays
======================

.. image:: images/dep-delay.png
  :height: 650px

----


Whoa there!
======================

.. image:: images/dep-delay-color.png
  :height: 650px

----

Facets! (aka small multiples)
=============================

.. image:: images/dep-delay-facet.png
  :height: 650px

----

In case we care about time more
===============================

.. image:: images/dep-delay-facet-other.png
  :height: 650px

----

And with the power of facets...
===============================

.. image:: images/dep-delay-origin-facet.png
  :height: 650px

----


Good to do
==========

and terrible to ... just don't.

----

Things to avoid
=================

-----

Save the Pies for Dessert
=========================

Pie (and donut) graphs are uniquely hard to read. Humans are pretty bad at perceiving
areas, especially of angular segments.

.. image:: images/badPie.png
    :height: 350px

For more, see: `Stephen Few's article
<http://www.perceptualedge.com/articles/08-21-07.pdf>`_

----

Visualizations should stand alone
====================================

Axis truncation
===============

.. image:: images/truncateY.jpg
  :height: 650px

----


(fake) 3d is for 3d
===================

.. image:: images/bedOfNails.png
		:width: 750px

-----

don't
===================

.. image:: images/wat.png
		:width: 750px

-----

seriously
===================

.. image:: images/sharks.gif
		:height: 650px

-----

I can't
===================

.. image:: images/football.jpg
		:width: 750px

-----

I just
===================

.. image:: images/football1.jpg
		:height: 650px


-----

I can't even
===================

.. image:: images/football2.jpg
		:width: 750px


-----


If you are using area as an encoding
====================================

... make sure you're actually using area and not height/width.


Even the white house go this one wrong.

.. image:: images/obamaCircles.jpg
    :height: 400px

----

If the actual values need to be annotated:
------------------------------------------

* try a `new visualization <http://junkcharts.typepad.com/.a/6a00d8341e992c53ef01b8d08fac47970c-pi>`_
* a table might be the answer

.. image:: images/sufficiency.jpg
    :width: 750px

for more information see `the Junk Charts blog on sufficiency <http://junkcharts.typepad.com/junk_charts/sufficiency/>`_

----

Tables
========
* Tables are visualizations too
* Make sure that your significant figures are sensible.





----




Good to do
==========

----


Labels and titles
=================

* label your axes
* have a title!

----


The Junk Charts Trifecta
=========================

* What is the **question**?
		* The question should be well-posed and interesting
* What does the **data** say?
    * The Data should be relevant to the question being addressed
* What does the **visual** say?
    * The Visual elements should represent the Data in a clear, concise manner, addressing the question directly

see `Junk Charts Trifecta Checkup: The Definitive Guide <http://junkcharts.typepad.com/junk_charts/junk-charts-trifecta-checkup-the-definitive-guide.html>`_

----

Small multiples
===============

It's ok to repeat yourself.

.. image:: images/econNonSmallMultiples.gif
  :height: 550px

from `Gelman <http://andrewgelman.com/2014/04/10/small-multiples-lineplots-maps-ok-always-yes-case/>`_ and
`Junk Charts <http://junkcharts.typepad.com/junk_charts/2014/02/small-multiples-with-simple-axes.html>`_

----

Small multiples
===============

It's ok to repeat yourself.

.. image:: images/smallMultiples.png
  :height: 550px

from `Gelman <http://andrewgelman.com/2014/04/10/small-multiples-lineplots-maps-ok-always-yes-case/>`_ and
`Junk Charts <http://junkcharts.typepad.com/junk_charts/2014/02/small-multiples-with-simple-axes.html>`_

.. note:: This does violate one of the rules we've talked about before. Which one? Honestly, it probably could do without them.

----


Print this out!
===================

.. image:: images/visual-variables.png

----

Demos
==========

----

Visualization in Python with MatPlotLib
=======================================
Ned

----

Visualization in R with ggplot2 + ggvis
=======================================
Monica+Jon

----

Visualization in Javascript with d3
===================================

https://d3js.org/

.. image:: images/d3_home.png
	:width: 750px


data driven documents using web standards
=========================================

D3 is an open source JS library for manipulating documents
to create web visualizations 
based on data using:

*  HTML, 
*  SVG, 
*  and CSS. 


---

Scalable Vector Graphics 
===================================

.. image:: images/svg_example.png
	:width: 750px

SVG Circle and other types 
===================================
.. image:: images/svg_example2.png
	:width: 232px

**Other types:**

* Rectangle <rect>
* Circle <circle>
* Ellipse <ellipse>
* Line <line>
* Polyline <polyline>
* Polygon <polygon>
* Path <path>

----

Data-driven approach to DOM manipulation.
=========================================

D3 allows you to bind arbitrary data to a **Document Object Model (DOM)**, 

and then apply data-driven transformations to the document. 


.. image:: images/d3_select_light_blue.png
	:width: 750px

.. image:: images/d3_select_with_data.png
	:width: 750px

Example: Mexico Choropleth Map
==============================
Using:

* `Mexico Map (municipality level) <http://bl.ocks.org/mbostock/9265674>`_

* `Choropleth <http://bl.ocks.org/mbostock/4060606>`_


With sample csv file:

.. image:: images/sample_csv.png
	:width: 550px

Sample Mexico Map using CSV data
================================ 

* `Mexico Map with Data <http://diegoolano.com/d3-talk/mexico-map-with-data.html>`_

.. image:: images/mexico_map.png
	:width: 750px

----

Example: Texas Arts
===================

.. image:: images/texas_arts.png
	:width: 750px



d3 links
===================================
- Examples: https://github.com/d3/d3/wiki/Gallery
- More Examples: http://bl.ocks.org/mbostock

- Maps in D3: https://bost.ocks.org/mike/map/
- Understanding Enter, Update, and Exit: https://bost.ocks.org/mike/circles/
- dimple: https://dimplejs.org


----

References
==========

* `Visual encoding <http://global.qlik.com/us/blog/posts/patrik-lundblad/visual-encoding>`_
* `Viridis presentation <https://www.youtube.com/watch?v=xAoljeRJ3lU>`_
* `Data viz trifecta <http://junkcharts.typepad.com/junk_charts/junk-charts-trifecta-checkup-the-definitive-guide.html>`_
* `Perceptual scaling <https://makingmaps.net/2007/08/28/perceptual-scaling-of-map-symbols/>`_
* `Selected papers and decks <https://github.com/jonkeane/data-visualization-intro/tree/master/references>`_


----
