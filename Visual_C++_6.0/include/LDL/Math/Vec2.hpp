#ifndef LDL_Math_Vec2_hpp
#define LDL_Math_Vec2_hpp

#include <LDL/Core/Types.hpp>

namespace LDL
{
	namespace Math
	{
		template<typename T>
		class Vec2
		{
		public:
			Vec2()
			{
				x = T();
				y = T();
			}

			Vec2(T v1, T v2)
			{
				x = v1;
				y = v2;
			}

			T x;
			T y;
		};
	}
}

#endif     