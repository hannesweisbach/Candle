#pragma once
#include "ShaderDrawable.h"

class OriginDrawer : public ShaderDrawable
{
public:
    OriginDrawer();
    virtual ~OriginDrawer();

protected:
    bool updateData() override;

    // ShaderDrawable interface
public:
    QVector3D getSizes() override;
    QVector3D getMinimumExtremes();
    QVector3D getMaximumExtremes();
    int getVertexCount() override;
};
