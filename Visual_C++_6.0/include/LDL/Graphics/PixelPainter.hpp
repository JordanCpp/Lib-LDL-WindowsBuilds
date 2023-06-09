#ifndef LDL_Graphics_PixelPainter_hpp
#define LDL_Graphics_PixelPainter_hpp

#include <LDL/Graphics/Surface.hpp>

namespace LDL
{
	namespace Graphics
	{
		class LDL_EXPORT PixelPainter
		{
		public:
			PixelPainter();
			~PixelPainter();
			Surface* Target();
			const Math::Vec2u& Size();
			uint8_t BytesPerPixel();
			uint8_t* Pixels();
			const LDL::Graphics::Color& Color();
			void Color(const LDL::Graphics::Color & color);
			void Clear();
			void Bind(Surface* source);
			void Pixel(const Math::Vec2u& pos);
			const LDL::Graphics::Color& GetPixel(const Math::Vec2u& pos);
			void Fill(const Math::Vec2u& pos, const Math::Vec2u& size);
			void Line(const Math::Vec2u& pos1, const Math::Vec2u& pos2);
		private:
			uint8_t _Red;
			uint8_t _Green;
			uint8_t _Blue;
			uint8_t _Alpha;
			Surface* _Target;
			size_t   _Width;
			size_t   _Heigth;
			uint8_t  _BytesPerPixel;
			uint8_t* _Pixels;
			LDL::Math::Vec2u  _Size;
			LDL::Graphics::Color _Color;
			LDL::Graphics::Color _ColorGetPixel;
		};
	}
}

#endif 