#include <cmath>
#include <iostream>
#include <sciplot/sciplot.hpp>

#include "SolvingMethods.h"
#include "2nd Task/Utils.h"


using namespace Utils;
using namespace sciplot;

int main() {

	const auto t = GenerateLinspaceWithStep(0.0, 3.0, 1e-7);
	constexpr auto f = [](const double x) { return -x; };
	/*const auto eulerSolution = EulerMethod{}.Solve({ 1.0, 0 }, t, f);
	const auto secondOrderRK_05 = SecondOrderRKMethod{0.5}.Solve({ 1.0, 0 }, t, f);
	const auto secondOrderRK_1 = SecondOrderRKMethod{ 1.0 }.Solve({ 1.0, 0 }, t, f);
	const auto secondOrderRK_075 = SecondOrderRKMethod{ 0.75 }.Solve({ 1.0, 0 }, t, f);*/
	const auto secondOrderRK_075 = SecondOrderRKMethod{ 0.75 }.Solve({ 1.0, 0 }, t, f);
	const auto fourthOrderRK = FourthOrderRKMethod{}.Solve({ 1.0, 0 }, t, f);


	const auto analyticalSolution = std::exp(-t);

	Plot plot;

	/*plot.drawCurve(t, analyticalSolution - eulerSolution).
			lineWidth(2).
			label("Euler solution");

	plot.drawCurve(t, secondOrderRK_1 - analyticalSolution).
			lineWidth(2).
			label("RK2 solution with alpha = 1");

	plot.drawCurve(t, secondOrderRK_05 - analyticalSolution).
			lineWidth(2).
			label("RK2 solution with alpha = 0.5");*/

	plot.drawCurve(t, secondOrderRK_075 - analyticalSolution).
			lineWidth(2).
			label("RK2 solution with alpha = 0.75");

	/*plot.drawCurve(t, analyticalSolution).
			lineWidth(2).
			label("Analytical Solution");*/

	plot.drawCurve(t, fourthOrderRK - analyticalSolution).
			lineWidth(2).
			label("RK4 error");



	plot.size(800, 500);
	plot.ytics().logscale();
	plot.show();

	return 0;
}