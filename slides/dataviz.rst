:title: Introduction to Data Visualization
:author: Jon, Diego, Kris, Monica, and Ned
:description: Topics in data visualization
:keywords: visualizatoin, data
:css: style.css

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

and worse: your eyes lie
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

Save the Pies for Dessert
=========================

Pie (and donut) graphs are uniquely hard to read. Humans are pretty bad at perceiving
areas, especially of angular segments.

.. image:: images/badPie.png
		:height: 350px

For more, see: `Stephen Few's article
<http://www.perceptualedge.com/articles/08-21-07.pdf>`_


----

Visualizations should stand alone.
====================================

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


Axis truncation
===============

.. image:: images/truncateY.jpg
	:height: 650px

----


Labels and titles
=================

* label your axes
* have a title!

----


If you are using area as an encoding
====================================

... make sure you're actually using area and not height/width.


Even the white house go this one wrong.

.. image:: images/obamaCircles.jpg
		:height: 400px

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

(time vs. coarticulation plot)

----

demos
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
Diego+Kris

----

References
==========

* `Visual encoding <http://global.qlik.com/us/blog/posts/patrik-lundblad/visual-encoding>`_
* `Viridis presentation <https://www.youtube.com/watch?v=xAoljeRJ3lU>`_
* `Data viz trifecta <http://junkcharts.typepad.com/junk_charts/junk-charts-trifecta-checkup-the-definitive-guide.html>`_
* `perceptual scaling <https://makingmaps.net/2007/08/28/perceptual-scaling-of-map-symbols/>`_


----
